.class public Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "DatePickerDialogFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 89
    return-void
.end method

.method public static a(Ljava/util/Calendar;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string/jumbo v2, "calendar_time"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->b:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string/jumbo v0, "saved_calendar_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "calendar_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 50
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 57
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 63
    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 65
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->b:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;->a(Ljava/util/Calendar;)V

    .line 83
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    const-string/jumbo v0, "saved_calendar_time"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 72
    return-void
.end method
