.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$5;
.super Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;
.source "ActivityMessageTheBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/appdata/webrequests/messaging/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    const v0, 0x7f07069d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 411
    :cond_0
    return-void
.end method
