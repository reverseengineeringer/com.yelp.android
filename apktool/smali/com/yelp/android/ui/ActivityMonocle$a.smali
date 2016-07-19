.class Lcom/yelp/android/ui/ActivityMonocle$a;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/ActivityMonocle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/ActivityMonocle;

.field private final b:Lcom/yelp/android/ui/h;

.field private final c:Lcom/yelp/android/serializable/Category;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/h;Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->b:Lcom/yelp/android/ui/h;

    .line 175
    iput-object p3, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->c:Lcom/yelp/android/serializable/Category;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->b:Lcom/yelp/android/ui/h;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->c:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/h;->a(Lcom/yelp/android/serializable/Category;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle$a;->b:Lcom/yelp/android/ui/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/h;->b()V

    .line 182
    return-void
.end method
