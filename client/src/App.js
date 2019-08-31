import React from 'react';
import logo from './logo.svg';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import otherPage from './otherPage'
import Fib from './Fib'
import './App.css';

function App() {
  return (
    <Router>
        <div className="App">
          <header className="App-header">
              <h1>A quick Fibonacci calculator using micro-services architectures</h1>
            <Link to="/">Home</Link>
            <Link to="/otherPage">Other Page</Link>
          </header>
          <Route exact path = "/" component={Fib}/>
          <Route path = "/otherPage" component={otherPage}/>
        </div>
    </Router>
  );
}

export default App;
