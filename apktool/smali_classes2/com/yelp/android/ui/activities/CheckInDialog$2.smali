.class Lcom/yelp/android/ui/activities/CheckInDialog$2;
.super Lcom/yelp/android/ui/util/al;
.source "CheckInDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/CheckInDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;Landroid/widget/TextView;IIII)V
    .locals 6

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$2;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/al;-><init>(Landroid/widget/TextView;IIII)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/util/al;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog$2;->a()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 140
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$2;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$2;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$2;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$2;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
