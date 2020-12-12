/*===========================================================
* Esempio di funzione che calcola il prodotto di un vettore
* per uno scalare.
*=========================================================*/

#include "mex.h"

/* Funzione che calcola il prodotto */
void prodotto_Vxa(double a, double *x, double *y, mwSize n)
{
	mwSize i;
	/* Si moltiplica ogli elemento di x per lo scalare a */
	for (i = 0; i<n; i++) {
		y[i] = a * x[i];
	}
}

/* La routine gateway */
void mexFunction(int nlhs, mxArray *plhs[],	int nrhs, const mxArray *prhs[])
{
	double a;              /* Valore scalare */
	double *x;             /* Vettore di input 1xN */
	size_t N;              /* Dimensione del vettore */
	double *y;             /* Vettore di output */

						   /* Si contrallo che il numero di argomenti sia corretto */
	if (nrhs != 2) {
		mexErrMsgIdAndTxt("MyToolbox:prodotto_Vxa:nrhs", "Sono richiesti due argomenti di input.");
	}
	if (nlhs != 1) {
		mexErrMsgIdAndTxt("MyToolbox:prodotto_Vxa:nlhs", "E' richiesto un solo argomento di output.");
	}
	/* Controllo che il primo argomento di input sia uno scalare */
	if (!mxIsDouble(prhs[0]) ||
		mxIsComplex(prhs[0]) ||
		mxGetNumberOfElements(prhs[0]) != 1) {
		mexErrMsgIdAndTxt("MyToolbox:prodotto_Vxa:notScalar", "Il moltiplicatore deve essere scalare.");
	}

	/* Controllo che il secondo argomento di input sia double */
	if (!mxIsDouble(prhs[1]) ||
		mxIsComplex(prhs[1])) {
		mexErrMsgIdAndTxt("MyToolbox:prodotto_Vxa:notDouble", "Il vettore deve essere di tipo double.");
	}

	/* Controllo che il primo argomento di input abbia solo una riga */
	if (mxGetM(prhs[1]) != 1) {
		mexErrMsgIdAndTxt("MyToolbox:prodotto_Vxa:notRowVector", "L'ingresso deve essere un vettore.");
	}

	/* Si recupera lo scalare */
	a = mxGetScalar(prhs[0]);

	/* Si recupera il vettore di input */
	x = mxGetPr(prhs[1]);

	/* Si stabilisce la dimensione del vettore */
	N = mxGetN(prhs[1]);

	/* Si crea il vettore di output */
	plhs[0] = mxCreateDoubleMatrix(1, (mwSize)N, mxREAL);

	/* Puntatore al vettore di output */
	y = mxGetPr(plhs[0]);

	/* Si invoca la funzione che calcola il prodotto */
	prodotto_Vxa(a, x, y, (mwSize)N);
}
