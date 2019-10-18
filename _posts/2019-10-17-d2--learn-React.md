---
layout: post
title: r2d2  learn-React
category: 100daysOfCode
---

learn-React
![ReactJS](images/icon-ReactJS.ico)
I started at the logical start point, the ReactJS.com Docs, and it pointed me to a video from [2013 JSConfEU talk by Pete Hunt about rethinking best practices and ReactJS](https://www.youtube.com/watch?v=x7cQ3mrcKaY). In the talk Pete Hunt explains a little of how ReactJS works:
* _ReactJS seperates concerns_: to increase cohesion and reduce coupling.
* **getInitialState: fuction (){},** defines the mutable state.
* **this.setState(...);** _setState_ is used to tell react that the data has change.
* plus a little about **Virtual DOM**...

Also, in the talk Pete mentioned ReactJS is the V in **MVC (Model-View-Controller)**, so I did a quick search and found a description of [ASP .NET's MVC](https://docs.microsoft.com/en-us/aspnet/core/mvc/overview?view=aspnetcore-3.0) that explained the dependencies and how they are dependent on each other.

## JSX ##
JSX
```
const element = (<h1 className="greeting">Hello, world!</h1>);
```
is identical to (what I think is [ES6 style](https://www.w3schools.com/Js/js_es6.asp)): 
```
const element = React.createElement(
  'h1',
  {className: 'greeting'},
  'Hello, world!'
);
```
JSX's purpose is to make it easier to render html in JS. 

## Components ##
React uses elements to represent the smallest blocks that can be rendered.
You render with function, what updates the virtual DOM (document object model), to change the content of the page. 
```
ReactDOM.render(element, document.getElementById('root'));
```

You can pass variables to components **props**.
But remember props are read only, so when using them you can not edit them (as you often do in functions). 
_The ReactJS hard rule is components are pure, and do not alter their props._

## Lifecycle ##
**componentDidMount()** method runs after the component output has been added to the DOM.
**componentWillUnmount()** method runs after the component output has been removed from DOM.
```
class XYZ extends React.component {
  constructor(props){

  }
  componentDidMount(){

  }
  componentWillUnmount(){

  }
  render(){
    return(
      <div>

      </div>
    );

  }
}

//The above XYZ component is called by JSX below <XYZ />
ReactDOM.render(<XYZ />, document.getElementById('root'));
```

React uses [sythetic events defined by W3C](https://reactjs.org/docs/events.html) i.e. onClick (by mouse), onMouseOver, onSubmit (form button), onTouchEnd (touch event)...
```
function ActionLink() {
  function handleClick(e) {
    e.preventDefault();
    console.log('The link was clicked.');
  }

  return (
    <a href="#" onClick={handleClick}> Click me </a>
  );
}
```
in the above _e_ is the prop for event, as the mouse click event will pass properties to be handled. 