.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusinessBulk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d()V
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
    .line 294
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/ui/activities/messaging/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/b;->b()V

    .line 299
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "unclaimed_widget"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessMultibizSelectAll:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 306
    return-void
.end method
