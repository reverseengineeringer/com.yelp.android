.class public Lcom/yelp/android/ui/dialogs/e;
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

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/e;
    .locals 6

    .prologue
    .line 21
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/dialogs/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/dialogs/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/dialogs/e;->setIndeterminate(Z)V

    .line 35
    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 36
    invoke-virtual {v0, p5}, Lcom/yelp/android/ui/dialogs/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 37
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->show()V

    .line 38
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$e;->spinner_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/e;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method
