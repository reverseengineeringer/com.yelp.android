.class Lcom/yelp/android/ui/activities/categorypicker/d;
.super Ljava/lang/Object;
.source "CategoryPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/d;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/d;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;)Lcom/yelp/android/ui/activities/categorypicker/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/e;->a(Z)V

    .line 135
    return-void
.end method
