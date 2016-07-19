.class final Lcom/yelp/android/ui/activities/nearby/a$a;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/a;

.field private b:Lcom/yelp/android/serializable/RichSearchSuggestion;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a$a;->a:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/yelp/android/ui/activities/nearby/a$a;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 391
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a$a;->a:Lcom/yelp/android/ui/activities/nearby/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a$a;->b:Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    .line 396
    return-void
.end method
