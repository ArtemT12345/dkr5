program dkr51;
const
  m = 100;
type
  TArray = array[1..m] of Integer;
var
  arr: Tarray;
  n, i, j, min, t: Integer;
procedure SelectionSort(var a: Tarray; n: Integer);
var
  i, j, min, t: Integer;
begin
  for i := 1 to n - 1 do
  begin
    min := i;
    for j := i + 1 to n do
    begin
      if a[j] < a[min] then
        min := j;
    end;
    t := a[min];
    a[min] := a[i];
    a[i] := t;
  end;
end;
begin
  writeln('Количество- ');
  readln(n);
  writeln('Введите элемент');
  for i := 1 to n do
    read(arr[i]);
  SelectionSort(arr, n);
  writeln('Итог:');
  for i := 1 to n do
    write(arr[i], ' ');
end.