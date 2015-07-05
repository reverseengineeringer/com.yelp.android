.class Lcom/yelp/android/ui/activities/businesspage/z;
.super Ljava/lang/Object;
.source "BusinessNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/t;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/t;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/z;->c:Lcom/yelp/android/ui/activities/businesspage/t;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/z;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/z;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method
