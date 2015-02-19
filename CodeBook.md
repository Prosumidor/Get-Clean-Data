CodeBook for the tidy dataset (Libro de códigos para los datos limpiados)
=========================================================================

Data source (Fuentes de datos)
------------------------------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Este conjunto de datos se deriva del "Set de Datos para el Reconocimiento de actividad humana mediante Smartphones", el cual se encuentra originalmente disponible aquí:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection (Selección de variables)
--------------------------------------------
I refer you to the README and features.txt files in the original dataset to learn more about the feature selection for this dataset. And there you will find the follow description:

Le remito a los archivos README y features.txt en el set de datos original para más información sobre la selección y configuración de variables para este set de datos. Y a continuación encontrará la siguiente descripción:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Las variables seleccionadas para esta base de datos provienen de las señales brutas del acelerómetro y el giroscopio 3-axial tAcc-XYZ y tGyro-XYZ. Estas señales de dominio temporal (el prefijo 't' significa tiempo) se capturan a una velocidad constante de 50 Hz. Luego se filtraron usando un filtro de mediana y un filtro de paso bajo Butterworth de 3er orden con una frecuencia de esquina de 20 Hz para eliminar el ruido. Del mismo modo, la señal de aceleración fue luego separada en señales de aceleración del cuerpo y de gravedad (tBodyAcc-XYZ y tGravityAcc-XYZ) utilizando otro paso bajo filtro Butterworth con una frecuencia de corte de 0,3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Posteriormente, la aceleración lineal del cuerpo y la velocidad angular se derivaron temporalmente para obtener señales Jerk (tBodyAccJerk-XYZ y tBodyGyroJerk-XYZ). Asimismo, la magnitud de estas señales tridimensionales se calcularon utilizando la norma euclidiana (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Finalmente se aplicó una transformación rápida de Fourier (FFT) a algunas de estas señales, produciendo las variables fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag (La 'f' indica la frecuencia en las señales de dominio).

I made this feature selection because the assignment calls to extract "only the measurements on the mean and standard deviation for each measurement".

Realicé esta selección de variables porque la asignación afirma explícitamente que se extraigan "sólo las mediciones en la media y la desviación estándar para cada medida".

In short, for this dataset, these were the signals used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

En resumen, para este conjunto de datos, se utilizaron estas señales para estimar las variables del vector de características para cada patrón:
'-XYZ' Se utiliza para denotar señales 3-axiales en la X, Y y Z.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
El conjunto de variables que se calcula a partir de estas señales son:

* mean(): Mean value (media)
* std(): Standard deviation (desviación estándar)

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
Los vectores adicionales se obtuvieron promediando las señales en una muestra de señal de ventana, que fueron los usados en la variable angle():

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

Other estimates have been removed for the purpose of this excercise.
Otras estimaciones se han eliminado a los efectos de este ejercicio.

Note: features are normalized and bounded within [-1,1].
Nota: Las funciones están normalizadas y limitadas dentro de [-1,1].

The resulting variable names are of the following form: tbodyaccmeanx, which means the mean value of tBodyAcc-XYZ.
Los nombres de las variables resultantes son de la siguiente forma: tbodyaccmeanx, que significa que es el valor medio de tBodyAcc-XYZ.