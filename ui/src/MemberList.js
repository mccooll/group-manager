import React, { useState, useEffect} from 'react';
import './App.css';
import fetcher from './fetcher'

function MemberPage(props) {
  const [allMembers, setAllMembers] = useState([]);

  const getAllMembers = async () => {
    const response = await fetcher("members");
    setMembership(response,[]);
  }

  const setMembership = (members, membersInGroup) => {
  	members = members.reduce((acc, val) => {
  		val.isMember = false;
  		acc.push(val);
  		return(acc)
  	}, []);
  	membersInGroup.forEach((m) => {
  		members[members.findIndex(e => e.id === m.memberId)].isMember = true;
  	});
  	setAllMembers(members);
  }

  const getMembership = async () => {
  	const response = await fetcher("group-members?id="+props.groupId);
  	setMembership(allMembers, response);
  }

  useEffect(() =>  {
    getAllMembers();
  },[])

  useEffect(() => {
  	if(props.groupId) {
  		getMembership();
  	} else {
  		setMembership(allMembers, []);
  	}
  }, [props.groupId])

  return (
    <div className="MemberPage">
      <select multiple size="5">
          {allMembers.map((m) => (
            <option key={m.id} value={m.id} disabled selected={m.isMember}>{m.name}</option>
          ))}
      </select>
    </div>
  );
}

export default MemberPage;
