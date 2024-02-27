program dkr52;
const
  m = 100;
type
  TArray = array[1..m] of Integer;
var
  arr: TArray;
  n, i: Integer;
procedure Heapify(var a: TArray; n, i: Integer);
var
  z, b, c: Integer;
begin
  z := i;
  b := 2 * i;
  c := 2 * i + 1;
  if (b <= n) and (a[b] > a[z]) then
    z := b;
  if (c <= n) and (a[c] > a[z]) then
    z := c;
  if z <> i then
  begin 
    a[i] := a[i] xor a[z];
    a[z] := a[i] xor a[z];
    a[i] := a[i] xor a[z];
    Heapify(a, n, z);
  end;
end;
procedure HeapSort(var a: TArray; n: Integer);
var
  i, t: Integer;
begin
  for i := n div 2 downto 1 do
    Heapify(a, n, i);
  for i := n downto 2 do
  begin
    t := a[1];
    a[1] := a[i];
    a[i] := t;
    Heapify(a, i - 1, 1);
  end;
end;
begin
  writeln('Количество');
  readln(n);
  writeln('Ввод');
  for i := 1 to n do
7
3
read(arr[i]);
  HeapSort(arr, n);
  writeln('Итог');
  for i := 1 to n do
    write(arr[i]:3);
end.