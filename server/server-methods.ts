import { getHello } from "/imports/utils/import-methods";

export const returnFour = () => 4;

export const addFour = (n: number): number => {
  const s = "Change the contents of this string to trigger rebuild";
  const t = getHello();
  if (!s || !t) {
    throw new Error("Whatever");
  }
  const result = n + 4;
  return result;
};
