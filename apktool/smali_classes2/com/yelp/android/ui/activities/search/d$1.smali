.class final Lcom/yelp/android/ui/activities/search/d$1;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/d;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/d$1;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/d$1;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;)V

    .line 187
    return-void
.end method
