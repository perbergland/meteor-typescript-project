import assert from "assert";
import { returnFour, addFour } from "./server-methods";

describe("server-methods", () => {
  it("should return the expected results", () => {
    assert.equal(returnFour(), 4);
    assert.equal(addFour(1), 5);
  });
});
