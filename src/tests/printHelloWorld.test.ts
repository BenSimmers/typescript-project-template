import { printHelloWorld } from "..";
import { describe, it, expect } from "bun:test";

describe("printHelloWorld", () => {
  it("should return 'Hello World!'", () => {
    expect(printHelloWorld).toBe("Hello World!");
  });
});
