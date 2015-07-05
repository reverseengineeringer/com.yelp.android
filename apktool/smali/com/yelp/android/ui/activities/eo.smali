.class Lcom/yelp/android/ui/activities/eo;
.super Lcom/yelp/android/ui/util/ce;
.source "CheckInDialog.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;Landroid/widget/TextView;IIII)V
    .locals 6

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eo;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/ce;-><init>(Landroid/widget/TextView;IIII)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/util/ce;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/eo;->a()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 152
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/eo;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eo;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eo;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
