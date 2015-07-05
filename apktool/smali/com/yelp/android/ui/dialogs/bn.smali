.class public Lcom/yelp/android/ui/dialogs/bn;
.super Landroid/app/ProgressDialog;
.source "YelpProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/bn;
    .locals 6

    .prologue
    .line 21
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/bn;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/bn;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/bn;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/dialogs/bn;->setMessage(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/dialogs/bn;->setIndeterminate(Z)V

    .line 31
    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 32
    invoke-virtual {v0, p5}, Lcom/yelp/android/ui/dialogs/bn;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 33
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->show()V

    .line 34
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/bn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/f;->spinner_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/bn;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method
