.class Lcom/yelp/android/ui/activities/businesspage/x;
.super Ljava/lang/Object;
.source "BusinessNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/t;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/x;->c:Lcom/yelp/android/ui/activities/businesspage/t;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/x;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/x;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/x;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
