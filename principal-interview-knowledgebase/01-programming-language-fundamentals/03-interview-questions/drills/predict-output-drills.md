# Predict Output Drills

## Drill 1
```js
console.log(a);
var a = 3;
```
Solution: `undefined` then assignment to 3.

## Drill 2
```js
for (var i = 0; i < 3; i++) setTimeout(() => console.log(i), 0);
```
Solution: `3 3 3` because one shared `var` binding.

## Drill 3
```js
Promise.resolve().then(() => console.log("micro"));
setTimeout(() => console.log("macro"), 0);
console.log("sync");
```
Solution order: `sync`, `micro`, `macro`.

## Drill 4
```ts
const x: any = "0";
console.log(x == 0, x === 0);
```
Solution: `true false`.
