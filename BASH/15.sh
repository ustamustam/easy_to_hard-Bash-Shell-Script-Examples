if [ "$CI_DEFAULT_BRANCH" == "master" ]; then DRYRUN="none" ; else DRYRUN="client" ; fi 
while IFS= read -r line; 
do 
    NAMESPACE=$(echo $line | cut -d'|' -f1)
    VOLUMESNAPSHOT=$(echo $line | cut -d'|' -f2)
    STATUS=$(echo $line | cut -d'|' -f3)
    RANDMIN=$(( $RANDOM % 59 + 1 ))
    RANDHOUR=$(( $RANDOM % 23 + 1 ))
    if [[ "$STATUS" == "false" ]]; then
      echo "${NAMESPACE} backup disabled"
      kubectl delete schedule "$NAMESPACE" -n velero 2>/dev/null
    elif [ ! -z "$NAMESPACE" ] && [ ! -z "$VOLUMESNAPSHOT" ]; then 
      #echo "${NAMESPACE} volumesnapshot ${VOLUMESNAPSHOT} backup ${RANDMIN} MIN ${RANDHOUR} HOUR"
      sed  "s/{{__NAMESPACE__}}/${NAMESPACE}/g" schedules/temp.yaml \
      | sed  "s/{{__VOLUMESNAPSHOT__}}/${VOLUMESNAPSHOT}/g" \
      | sed  "s/{{__RANDMIN__}}/${RANDMIN}/g" \
      | sed  "s/{{__RANDHOUR__}}/${RANDHOUR}/g" \
      |  kubectl apply --dry-run=$DRYRUN -f - 
    else
      echo "Empty"
    fi
   
done < schedules/namespaces.yaml
