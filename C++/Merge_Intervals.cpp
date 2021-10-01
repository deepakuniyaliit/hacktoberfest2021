/**
 * Definition for an interval.
 * struct Interval {
 *     int start;
 *     int end;
 *     Interval() : start(0), end(0) {}
 *     Interval(int s, int e) : start(s), end(e) {}
 * };
 */

vector<Interval> Solution::insert(vector<Interval> &intervals, Interval newInterval)
{
    int n = intervals.size();
    int pos = n;
    for (int i = 0; i < intervals.size(); i++)
    {
        if (intervals[i].start > newInterval.start)
        {
            pos = i;
            break;
        }
    }
    intervals.insert(intervals.begin() + pos, newInterval);
    vector<Interval> ans;
    ans.push_back({intervals[0].start, intervals[0].end});
    for (int i = 1; i < intervals.size(); i++)
    {
        if (ans.back().end < intervals[i].start)
        {
            ans.push_back({intervals[i].start, intervals[i].end});
        }
        else
        {
            ans.back().end = max(ans.back().end, intervals[i].end);
        }
    }
    return ans;
}
