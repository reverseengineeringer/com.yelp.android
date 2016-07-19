.class final Lcom/yelp/android/ui/activities/search/d$2;
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
    .line 193
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/d$2;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilter:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/d$2;->a:Landroid/support/v7/app/ActionBarActivity;

    check-cast v0, Lcom/yelp/android/ui/activities/search/d$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/d$a;->j()V

    .line 199
    return-void
.end method
