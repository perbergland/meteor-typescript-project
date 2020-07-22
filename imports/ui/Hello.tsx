import React, { useState } from "react";
import { getHello } from "../utils/import-methods";

export const Hello = () => {
  const [counter, setCounter] = useState(0);

  const increment = () => {
    setCounter(counter + 1);
  };

  return (
    <div>
      <div>{getHello()}</div>
      <button onClick={increment}>Click Me</button>
      <p>You've pressed the button {counter} times.</p>
    </div>
  );
};
