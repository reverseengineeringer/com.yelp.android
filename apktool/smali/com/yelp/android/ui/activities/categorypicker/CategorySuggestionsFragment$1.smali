.class Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$1;
.super Ljava/lang/Object;
.source "CategorySuggestionsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;->b()V

    .line 86
    return-void
.end method
