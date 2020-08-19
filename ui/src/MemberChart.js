import React, { useState, useEffect} from 'react';
import './App.css';
import Highcharts from 'highcharts'
import HighchartsReact from 'highcharts-react-official'
import fetcher from './fetcher'

function ChartPage(props) {
  
  const [options, setOptions] = useState({
    title: {
      text: 'Group Membership History'
    },
    xAxis: {
      title: {
        text: ''
      },
      visible: false
    },
    yAxis: {
      title: {
        text:'Number of Members'
      }
    },
    series: [{
      showInLegend: false,
      data: [1,2,3]
    }]
  });

  const setData = (data) => {
    window.data = data
    setOptions({
      series: [{data: data}]
    })
  }

  const getMemberNumbers = async () => {
    const response = await fetcher("size?id="+props.groupId);
    setData(response.map((v) => v.size).reverse());
  }

  useEffect(() => {
    if(props.groupId) {
      getMemberNumbers();
    } else {
      setData([]);
    }
  }, [props.groupId])

  return (
    <div className="ChartPage">
      <HighchartsReact
            highcharts={Highcharts}
            options={options}
          />
    </div>
  );
}
export default ChartPage;