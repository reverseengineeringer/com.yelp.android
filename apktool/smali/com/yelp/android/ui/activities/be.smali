.class Lcom/yelp/android/ui/activities/be;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/yelp/android/ui/activities/be;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 382
    iget-object v6, p0, Lcom/yelp/android/ui/activities/be;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/be;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v2, 0x7f07033f

    iget-object v3, p0, Lcom/yelp/android/ui/activities/be;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V

    invoke-static {v6, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/be;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 388
    return-void
.end method
