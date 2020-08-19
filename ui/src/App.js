import React, { useState, useEffect} from 'react';
import MemberChart from './MemberChart'
import MemberList from './MemberList'
import fetcher from './fetcher'
import './App.css';

function App() {

  const [groups, setGroups] = useState([]);
  const [groupId, setGroupId] = useState(null);

  const getGroups = async () => {
    const response = await fetcher("groups");
    setGroups(response);
  }

  useEffect(() =>  {
    getGroups();
  },[])

  return (
    <div className="App">
      <select onChange={(v)=>setGroupId(v.target.value)}>
          <option value="">Select a group</option>
          {groups.map((g) => (
            <option key={g.id} value={g.id}>{g.name}</option>
          ))}
      </select>
      <MemberList groupId={groupId} />
      <MemberChart groupId={groupId} /> 
    </div>
  );
}

export default App;
