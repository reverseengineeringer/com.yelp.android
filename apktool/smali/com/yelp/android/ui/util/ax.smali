.class public Lcom/yelp/android/ui/util/ax;
.super Ljava/lang/Object;
.source "YelpPrivacyPolicyDialogManager.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/yelp/android/appdata/c;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/b;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/support/b;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    .line 29
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Lcom/yelp/android/appdata/c;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ax;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/ax;)Lcom/yelp/android/appdata/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Lcom/yelp/android/appdata/c;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->b:Lcom/yelp/android/appdata/c;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    const-string/jumbo v2, "Features"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    const v2, 0x7f070650

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    const v2, 0x7f07036c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/util/ax$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/util/ax$1;-><init>(Lcom/yelp/android/ui/util/ax;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Landroid/app/Activity;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/util/ax$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/util/ax$2;-><init>(Lcom/yelp/android/ui/util/ax;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
