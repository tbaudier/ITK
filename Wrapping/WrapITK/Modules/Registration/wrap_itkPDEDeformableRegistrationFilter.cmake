WRAP_CLASS("itk::PDEDeformableRegistrationFilter" POINTER)
  foreach(s ${WRAP_ITK_SCALAR})
    WRAP_IMAGE_FILTER_COMBINATIONS("${s}" "${s}" "${WRAP_ITK_VECTOR_REAL}" 2+)
  endforeach(s)
END_WRAP_CLASS()

