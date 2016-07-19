.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 442
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/view/View;)V

    goto :goto_0
.end method
