.class Lcom/yelp/android/ui/activities/compliments/b;
.super Ljava/lang/Object;
.source "ComplimentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/serializable/Compliment;

.field final synthetic c:Lcom/yelp/android/ui/activities/compliments/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/a;Landroid/content/Context;Lcom/yelp/android/serializable/Compliment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/b;->c:Lcom/yelp/android/ui/activities/compliments/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/b;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/b;->b:Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Compliment;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
