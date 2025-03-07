// Copyright (c) 2022 PaddlePaddle Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#pragma once
#include "glog/logging.h"
#include "paddle/phi/kernels/full_kernel.h"

namespace phi {

template <typename T, typename Context>
void FullWithTensorKernel(const Context& dev_ctx,
                          const DenseTensor& value,
                          const IntArray& shape,
                          DataType dtype,
                          DenseTensor* out) {
  VLOG(1) << "wht --- full with tensor kernel";
  out->Resize(common::make_ddim(shape.GetData()));
  VLOG(1) << "wht --- trigger full kernel";
  FullKernel<T, Context>(dev_ctx, shape, Scalar(value), dtype, out);
}
}  // namespace phi
