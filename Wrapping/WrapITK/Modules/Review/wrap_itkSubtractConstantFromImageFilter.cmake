WRAP_CLASS("itk::SubtractConstantFromImageFilter" POINTER_WITH_SUPERCLASS)
  foreach(d ${WRAP_ITK_DIMS})
    foreach(t ${WRAP_ITK_SCALAR})
      WRAP_TEMPLATE("${ITKM_I${t}${d}}${ITKM_${t}}${ITKM_I${t}${d}}"    "${ITKT_I${t}${d}},${ITKT_${t}},${ITKT_I${t}${d}}")
    endforeach(t)
  endforeach(d)
END_WRAP_CLASS()
