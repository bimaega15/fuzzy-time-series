@props([
    'title' => 'Cancel',
    'className' => '',
    'typeModal' => '',
    'urlCreate' => '',
    'icon' => '<i class="bx bx-redo me-sm-1"></i>',
    'color' => 'btn-danger',
    'style' => '',
    'disabled' => false,
    'type' => 'reset',
])

<button
    {{ $attributes->merge([
        'class' => 'btn ' . $color . ' ' . $className,
        'data-typemodal' => $typeModal,
        'data-urlcreate' => $urlCreate,
        'style' => $style,
        'disabled' => $disabled,
        'type' => $type,
    ]) }}
    type="button">
    <span>
        {!! $icon . ' ' . $title !!}

    </span>
</button>
