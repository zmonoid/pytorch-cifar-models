# for densenet
# CUDA_VISIBLE_DEVICES=0 python main.py --epoch 300 --batch-size 64 -ct 100

# for resnet
counter=1
for arch in "sheresnet164_cifar10_bb" "seresnet164_cifar10" "resnet164_cifar10"
do
    CUDA_VISIBLE_DEVICES=$counter python main.py --epoch 160 --batch-size 128 --lr 0.1 --momentum 0.9 --wd 1e-4 -ct 10 --arch $arch &
    $((counter++))
    echo $counter
done
