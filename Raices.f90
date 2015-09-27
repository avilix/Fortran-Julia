
PROGRAM ecgrado2f
   IMPLICIT NONE
   
   REAL (KIND=16) :: A, B, C
   REAL (KIND=16) :: X, X1,X2,DISCR
   REAL (KIND=8), PARAMETER :: TOL=1e-10
   COMPLEX (KIND=8) :: XA,XB, PIM
   ! Los datos se leen en el fichero datos.d
 print*,"escribe los coeficientes de tu ecuacion de segundo grado"
READ*, A, B, C 
PRINT*,"A=",A
PRINT*,"B=",B 
PRINT*,"C=",C 

DISCR = (B**2-4.0*A*C)
   IF (DISCR>0) THEN
      X1 = (-B+SQRT(DISCR))/(2.0*A)
      X2 = (-B-SQRT(DISCR))/(2.0*A)
      PRINT *, "Las soluciones son reales: "
     PRINT*, "X1=",X1
      PRINT*," X2=",X2
   ELSE IF (DISCR<-TOL) THEN
      PIM = SQRT(CMPLX(DISCR))
      XA = (-B+PIM)/(2.0*A)
      XB = (-B-PIM)/(2.0*A)
      PRINT *, "Las soluciones son complejas:"
      PRINT*," XA=",XA
      PRINT*," XB=",XB
   ELSE
      X = -B/(2.0*A)
      PRINT *, "La raiz doble es: X=", X
   END IF
END PROGRAM

