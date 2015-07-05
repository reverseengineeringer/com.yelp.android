.class public Lcom/yelp/android/ui/util/IntervalTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "IntervalTimePickerDialog.java"


# instance fields
.field private final mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final mInterval:I

.field private mPreviousMinute:I

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mUseRoundingMethod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZI)V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 42
    iput-object p2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 43
    iput p4, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    .line 44
    iput p6, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    .line 45
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    .line 46
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v8, 0x3c

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onAttachedToWindow()V

    .line 127
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 132
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 133
    const-string/jumbo v0, "timePicker"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 135
    const-string/jumbo v0, "minute"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 140
    const/16 v2, 0x3c

    iget v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :goto_1
    if-ge v1, v8, :cond_1

    .line 146
    const-string/jumbo v3, "%02d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 148
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 163
    iput-boolean v7, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Using reflection inside IntervalTimePickerDialog isn\'t working."

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 107
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    mul-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onStop()V

    .line 179
    :cond_0
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 4

    .prologue
    const/16 v1, 0x17

    const/4 v0, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 59
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mUseRoundingMethod:Z

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    if-eq p3, v2, :cond_0

    .line 67
    const/16 v2, 0x3b

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    if-nez v2, :cond_3

    .line 68
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    rsub-int/lit8 p3, v2, 0x3c

    .line 69
    add-int/lit8 p2, p2, -0x1

    .line 70
    if-gez p2, :cond_2

    move p2, v1

    .line 83
    :cond_2
    :goto_1
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    div-int v2, p3, v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    mul-int/2addr v2, v3

    .line 84
    const/16 v3, 0x3c

    if-lt v2, v3, :cond_8

    .line 86
    add-int/lit8 v2, p2, 0x1

    move v3, v0

    .line 88
    :goto_2
    if-le v2, v1, :cond_7

    .line 91
    :goto_3
    iput v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0

    .line 75
    :cond_3
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x3c

    if-lt p3, v2, :cond_4

    .line 76
    add-int/lit8 p2, p2, 0x1

    move p3, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    sub-int v2, p3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 79
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    iget v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    add-int p3, v2, v3

    goto :goto_1

    .line 80
    :cond_5
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    sub-int v2, p3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    sub-int v2, p3, v2

    const/16 v3, -0x3b

    if-ne v2, v3, :cond_2

    .line 81
    :cond_6
    iget v2, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mPreviousMinute:I

    iget v3, p0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;->mInterval:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v3, v2

    move v2, p2

    goto :goto_2
.end method
