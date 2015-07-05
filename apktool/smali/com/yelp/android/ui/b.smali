.class Lcom/yelp/android/ui/b;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/ActivityMonocle;

.field private final b:Lcom/yelp/android/ui/m;

.field private final c:Lcom/yelp/android/serializable/Category;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yelp/android/ui/b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/yelp/android/ui/b;->b:Lcom/yelp/android/ui/m;

    .line 173
    iput-object p3, p0, Lcom/yelp/android/ui/b;->c:Lcom/yelp/android/serializable/Category;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/b;->b:Lcom/yelp/android/ui/m;

    iget-object v1, p0, Lcom/yelp/android/ui/b;->c:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/m;->a(Lcom/yelp/android/serializable/Category;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/b;->b:Lcom/yelp/android/ui/m;

    invoke-virtual {v0}, Lcom/yelp/android/ui/m;->b()V

    .line 181
    return-void
.end method
