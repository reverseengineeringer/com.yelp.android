.class final Lcom/yelp/android/ui/activities/feed/viewbinder/q$4;
.super Ljava/lang/Object;
.source "InlineAlertsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/serializable/Alert;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Alert;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/Alert;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$4;->a:Lcom/yelp/android/serializable/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$4;->a:Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method
