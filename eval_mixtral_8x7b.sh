#!/bin/bash

save_dir="eval_results_pruned/"
global_record_file="eval_results_pruned/eval_record_collection_pruned.csv"
model="/root/.cache/huggingface/hub/Mixtral-8x7B_Instruct-v0.1_pruning_2_experts_l2norm"
selected_subjects="all"
gpu_util=0.8



python evaluate_from_local.py \
                 --selected_subjects $selected_subjects \
                 --save_dir $save_dir \
                 --model $model \
                 --global_record_file $global_record_file \
                 --gpu_util $gpu_util

