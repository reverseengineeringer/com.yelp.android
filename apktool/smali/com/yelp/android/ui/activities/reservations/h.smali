.class public Lcom/yelp/android/ui/activities/reservations/h;
.super Ljava/lang/Object;
.source "OpentableDialogs.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/i;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reservations/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/reservations/h;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/yelp/android/ui/activities/reservations/h;->b:I

    .line 51
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reservations/h;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/h;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/h;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 95
    instance-of v0, p2, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/h;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p2, p1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/h;->a:Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/h;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const v0, 0x7f070118

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/h;->a:Ljava/lang/CharSequence;

    .line 70
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reservations/h;->b:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
