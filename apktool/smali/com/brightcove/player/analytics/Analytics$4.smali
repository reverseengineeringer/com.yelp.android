.class Lcom/brightcove/player/analytics/Analytics$4;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4

    .prologue
    .line 211
    const-string/jumbo v0, "seekPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 213
    if-lez v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    sub-int v1, v0, v1

    .line 218
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    iget-object v3, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v3}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v3

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v1, p1, v2, v3}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 223
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$4;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2, v0}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    move-result v0

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1, v0}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    goto :goto_0
.end method
