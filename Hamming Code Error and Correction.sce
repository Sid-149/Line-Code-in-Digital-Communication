R=input('Enter the recieved codeword: ');
P=[1 1 0;0 1 1;1 1 1;1 0 1]
I=[1 0 0;0 1 0;0 0 1]
H=[P' I]
H1=H'
S=R*H1
S=modulo(S,2)
disp(S,'Syndrome:')
if S==[0 0 0] then
    disp('','No error in recieved code')
    disp(R,'corrected code')
else
    disp('','Error is present in recieved code')
end
for i=1:7
    if S==H1(i,:) then
        mprintf('%i bit is an error',i)
        corrected_code=R
        corrected_code(i)=bitxor(1,R(i))
        disp(corrected_code,'Corrected Code is','')
    end
end
