
"Code Book for Peer-graded Assignment: Getting and Cleaning Data Course Project"

# wearable computing Example

## Identifiers

1. subject

 * Subject identifier, integer, ranges from 1 to 30.

2. Activity

 * Activity identifier, string with 6 possible values:
 
   * WALKING: subject was walking
   * WALKING_UPSTAIRS: subject was walking upstairs
   * WALKING_DOWNSTAIRS: subject was walking downstairs
   * SITTING: subject was sitting
   * STANDING: subject was standing
   * LAYING: subject was laying

## Measurements


1. Time-domain signals, resulting from the capture of accelerometer and gyroscope raw signals.

2. Frequency-domain signals, resulting from the application of a Fast Fourier Transform (FFT) to the time-domain signals


### Time-domain signals
1. Average time-domain body acceleration in the X, Y and Z directions:

         timeDomainBodyAccelerometerMean
         timeDomainBodyAccelerometerStandardDeviation

2. Average time-domain gravity acceleration in the X, Y and Z directions:

         timeDomainGravityAccelerometerMean

3. Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

         timeDomainGravityAccelerometerStandardDeviation

4. Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

         timeDomainBodyAccelerometerJerkMean 

5. Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

         timeDomainBodyAccelerometerJerkStandardDeviation

6. Average time-domain body angular velocity in the X, Y and Z directions:

         timeDomainBodyGyroscopeMean

7. Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

         timeDomainBodyGyroscopeStandardDeviation

8. Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

         timeDomainBodyGyroscopeJerkMean

9. Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

         timeDomainBodyGyroscopeJerkStandardDeviation

10. Average and standard deviation of the time-domain magnitude of body acceleration:

         timeDomainBodyAccelerometerMagnitudeMean
         timeDomainBodyAccelerometerMagnitudeStandardDeviation

11. Average and standard deviation of the time-domain magnitude of gravity acceleration:

         timeDomainGravityAccelerometerMagnitudeMean
         timeDomainGravityAccelerometerMagnitudeStandardDeviation

12. Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

         timeDomainBodyAccelerometerJerkMagnitudeMean
         timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

13. Average and standard deviation of the time-domain magnitude of body angular velocity:

         timeDomainBodyGyroscopeMagnitudeMean
         timeDomainBodyGyroscopeMagnitudeStandardDeviation

14. Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

         timeDomainBodyGyroscopeJerkMagnitudeMean
         timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation


### Frequency-domain signals
The same as time domain but after applying fourier transformation for them








