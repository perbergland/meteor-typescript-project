export const returnFour = () => 4;

export const addFour = (n: number): number => {
  const s = "Change the contents of this string to trigger rebuild";
  if (!s) {
    throw new Error("Whatever");
  }
  const result = n + 4;
  return result;
};
