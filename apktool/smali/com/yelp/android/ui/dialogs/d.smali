.class public Lcom/yelp/android/ui/dialogs/d;
.super Ljava/lang/Object;
.source "YelpDialogBuilder.java"


# instance fields
.field private a:Landroid/support/v7/app/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/support/v7/app/d$a;

    invoke-direct {v0, p1}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/yelp/android/ui/dialogs/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d$a;->a(I)Landroid/support/v7/app/d$a;

    .line 42
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 62
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/d;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/d$a;

    .line 72
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/yelp/android/ui/dialogs/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d$a;->b(Landroid/view/View;)Landroid/support/v7/app/d$a;

    .line 33
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/d;->a:Landroid/support/v7/app/d$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 67
    return-object p0
.end method
