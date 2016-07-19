.class Lcom/yelp/android/ui/panels/BizAttributePanel$1;
.super Ljava/lang/Object;
.source "BizAttributePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/BizAttributePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$1;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$1;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 38
    return-void
.end method
