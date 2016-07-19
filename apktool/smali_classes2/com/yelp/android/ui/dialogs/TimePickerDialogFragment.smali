.class public Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Calendar;

.field private c:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 86
    return-void
.end method

.method public static a(ILjava/util/Calendar;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string/jumbo v2, "time_interval"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string/jumbo v2, "calendar_time"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->c:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "time_interval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a:I

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string/jumbo v0, "saved_calendar_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string/jumbo v1, "calendar_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a:I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZI)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    const-string/jumbo v0, "saved_calendar_time"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->c:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->b:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;->a(Ljava/util/Calendar;)V

    .line 80
    return-void
.end method
