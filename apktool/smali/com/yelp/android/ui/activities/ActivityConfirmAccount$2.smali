.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityChangePrimaryEmail;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmEmailEditPrimaryEmail:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 309
    return-void
.end method
