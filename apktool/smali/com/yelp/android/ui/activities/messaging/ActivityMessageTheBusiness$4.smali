.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;
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
    .line 392
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 395
    check-cast p1, Lcom/yelp/android/cc/k;

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Landroid/text/TextWatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 398
    return-void
.end method
