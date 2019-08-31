import React from 'react';
import { Link } from 'react-router-dom';

const otherPage= () => {
    return (
        <div>
            Another page
            <Link to='/'>Go back to Home page</Link>
        </div>
    );
};

export default otherPage
