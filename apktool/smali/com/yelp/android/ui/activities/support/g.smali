.class Lcom/yelp/android/ui/activities/support/g;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Intent;

.field final synthetic b:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private c:Lcom/yelp/android/analytics/iris/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/b;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/g;->b:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/g;->a:Landroid/content/Intent;

    .line 1175
    iput-object p3, p0, Lcom/yelp/android/ui/activities/support/g;->c:Lcom/yelp/android/analytics/iris/b;

    .line 1176
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/g;->a:Landroid/content/Intent;

    .line 1194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/g;->c:Lcom/yelp/android/analytics/iris/b;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/g;->c:Lcom/yelp/android/analytics/iris/b;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/g;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/g;->b:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/g;->b:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/g;->a:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/g;->b:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/g;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1190
    :cond_1
    return-void
.end method
