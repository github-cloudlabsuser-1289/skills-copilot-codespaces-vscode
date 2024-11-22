const Calculator = require('./test.js');

// FILE: test.test.js


describe('Calculator', () => {
    let calculator;

    beforeEach(() => {
        calculator = new Calculator();
    });

    test('should add a positive number', () => {
        expect(calculator.add(5)).toBe(5);
    });

    test('should add a negative number', () => {
        calculator.add(5);
        expect(calculator.add(-3)).toBe(2);
    });

    test('should add zero', () => {
        calculator.add(5);
        expect(calculator.add(0)).toBe(5);
    });
});