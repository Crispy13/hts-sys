for f in `find target/debug -name "bindings.rs"`
do
    echo ">> $f"
    diff linux_prebuilt_bindings.rs $f
    echo "diff retcode: $?"
done
