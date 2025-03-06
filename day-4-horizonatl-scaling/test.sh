    for i in {1..1000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" <loadbalancer of the pod>/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done
