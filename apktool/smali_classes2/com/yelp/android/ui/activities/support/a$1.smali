.class Lcom/yelp/android/ui/activities/support/a$1;
.super Ljava/lang/Object;
.source "ShareSheetHelper.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/commons/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/a;-><init>(Landroid/app/Activity;Lcom/yelp/android/services/ShareFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/yelp/android/ui/activities/support/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/a;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/a$1;->c:Lcom/yelp/android/ui/activities/support/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/support/a$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/commons/a$a;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$1;->c:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/a;->a(Lcom/yelp/android/ui/activities/support/a;)Lcom/yelp/android/services/ShareFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a$1;->a:Landroid/app/Activity;

    new-instance v2, Lcom/yelp/android/services/e$a;

    iget-object v3, p1, Lcom/flipboard/bottomsheet/commons/a$a;->d:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, v3}, Lcom/yelp/android/services/e$a;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/a$1;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    .line 88
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a$1;->c:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/a;->a(Lcom/yelp/android/ui/activities/support/a;)Lcom/yelp/android/services/ShareFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/ShareFormatter;->b()Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "app_id"

    iget-object v3, p1, Lcom/flipboard/bottomsheet/commons/a$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$1;->c:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/a;->b(Lcom/yelp/android/ui/activities/support/a;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c()V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a$1;->b:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
