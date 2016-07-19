.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusinessBulk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessMultibizEdit:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
